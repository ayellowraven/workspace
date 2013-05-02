<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcesearch_results_chapters extends SectionDatasource {

		public $dsParamROOTELEMENT = 'search-results-chapters';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		public $dsParamCACHE = '0';
		

		public $dsParamFILTERS = array(
				'system:id' => '{$ds-elasticsearch}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'order',
				'title',
				'tags'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array('$ds-elasticsearch');
		}

		public function about() {
			return array(
				'name' => 'Search Results: Chapters',
				'author' => array(
					'name' => 'Bernard Yu',
					'website' => 'http://projects.enguin.com/books/platen',
					'email' => 'hello@ayellowraven.com'),
				'version' => 'Symphony 2.3.3beta2',
				'release-date' => '2013-05-01T01:15:50+00:00'
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
