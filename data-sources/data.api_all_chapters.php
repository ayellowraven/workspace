<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceapi_all_chapters extends SectionDatasource {

		public $dsParamROOTELEMENT = 'api-all-chapters';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		public $dsParamCACHE = '0';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'system:date',
				'order',
				'title',
				'tags'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'API: All Chapters',
				'author' => array(
					'name' => 'Bernard Yu',
					'website' => 'http://projects.enguin.com/books/platen',
					'email' => 'hello@ayellowraven.com'),
				'version' => 'Symphony 2.3.3beta2',
				'release-date' => '2013-05-01T01:11:29+00:00'
			);
		}

		public function getSource() {
			return '1';
		}

		public function allowEditorToParse() {
			return true;
		}

		public function execute(array &$param_pool = null) {
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				$result = parent::execute($param_pool);
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			return $result;
		}

	}
