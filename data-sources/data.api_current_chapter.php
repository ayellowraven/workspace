<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceapi_current_chapter extends SectionDatasource {

		public $dsParamROOTELEMENT = 'api-current-chapter';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = array(
				'order'
		);
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		public $dsParamCACHE = '0';
		

		public $dsParamFILTERS = array(
				'1' => '{$url-chapter}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'system:date',
				'order',
				'title',
				'text: formatted',
				'text: unformatted',
				'tags'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'API: Current Chapter',
				'author' => array(
					'name' => 'Bernard Yu',
					'website' => 'http://projects.enguin.com/books/platen',
					'email' => 'hello@ayellowraven.com'),
				'version' => 'Symphony 2.3.3beta2',
				'release-date' => '2013-05-01T01:12:25+00:00'
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
