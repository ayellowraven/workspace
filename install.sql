
-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (2, 2, NULL);

-- *** STRUCTURE:`tbl_fields_maplocation` ***
DROP TABLE IF EXISTS`tbl_fields_maplocation`;
CREATE TABLE`tbl_fields_maplocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_location` varchar(60) NOT NULL,
  `default_location_coords` varchar(60) NOT NULL,
  `default_zoom` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_fields_maplocation` ***

-- *** STRUCTURE:`tbl_fields_number` ***
DROP TABLE IF EXISTS`tbl_fields_number`;
CREATE TABLE`tbl_fields_number` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_number` ***

-- *** STRUCTURE:`tbl_fields_order_entries` ***
DROP TABLE IF EXISTS`tbl_fields_order_entries`;
CREATE TABLE`tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_fields_order_entries` ***
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (2, 1, 'yes', 'no');

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***
INSERT INTO`tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (2, 4, NULL, 'existing');

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (2, 3, 'markdown_extra', 15);

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_1` ***
DROP TABLE IF EXISTS`tbl_entries_data_1`;
CREATE TABLE`tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_1` ***

-- *** STRUCTURE:`tbl_entries_data_2` ***
DROP TABLE IF EXISTS`tbl_entries_data_2`;
CREATE TABLE`tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_2` ***

-- *** STRUCTURE:`tbl_entries_data_3` ***
DROP TABLE IF EXISTS`tbl_entries_data_3`;
CREATE TABLE`tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_3` ***

-- *** STRUCTURE:`tbl_entries_data_4` ***
DROP TABLE IF EXISTS`tbl_entries_data_4`;
CREATE TABLE`tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_4` ***

-- *** DATA:`tbl_documentation` ***
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (1, 'Chapter text', '/publish/chapters/,/publish/chapters/new/,/publish/chapters/edit/,/blueprints/sections/,/blueprints/sections/edit/', 'Text defaults to using [Markdown](http://daringfireball.net/projects/markdown). However, if you need more control, you can change it to raw text to use xhtml.', '<p>Text defaults to using <a href=\"http://daringfireball.net/projects/markdown\">Markdown</a>. However, if you need more control, you can change it to raw text to use xhtml.</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (2, 'On using the XML importer', '/extension/xmlimporter/importers/', 'Documentation on using the XML importer is available at: http://symphonyextensions.com/extensions/xmlimporter/', '<p>Documentation on using the XML importer is available at: http://symphonyextensions.com/extensions/xmlimporter/</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (3, 'Using the CSV importer', '/extension/importcsv/', 'Documentation on using the CSV importer is available at: https://github.com/kanduvisla/importcsv', '<p>Documentation on using the CSV importer is available at: https://github.com/kanduvisla/importcsv</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (4, 'Creating book chapters', '/publish/chapters/new/,/publish/chapters/edit/', 'By default, you can format text with [Markdown](http://daringfireball.net/projects/markdown/). However, you can also use HTML (but remember to close all your elements).', '<p>By default, you can format text with <a href=\"http://daringfireball.net/projects/markdown/\">Markdown</a>. However, you can also use HTML (but remember to close all your elements).</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (5, 'Using Project Platen and Symphony', '/publish/chapters/,/publish/chapters/new/,/publish/chapters/edit/,/system/authors/,/system/authors/edit/,/system/authors/new/,/system/authors/summary/,/system/preferences/,/system/extensions/,/system/extensions/info/,/system/actions/,/system/log/,/extension/importcsv/,/extension/documenter/,/blueprints/pages/,/blueprints/pages/new/,/blueprints/pages/edit/,/blueprints/sections/,/blueprints/sections/new/,/blueprints/sections/edit/,/blueprints/datasources/,/blueprints/datasources/new/,/blueprints/datasources/edit/,/blueprints/datasources/info/,/blueprints/events/,/blueprints/events/new/,/blueprints/events/edit/,/blueprints/events/info/,/blueprints/utilities/,/blueprints/utilities/new/,/blueprints/utilities/edit/,/extension/url_router/routes/,/extension/globalresourceloader/preferences/,/extension/xmlimporter/importers/,/extension/elasticsearch/mappings/,/extension/elasticsearch/mappings/new/,/extension/elasticsearch/mappings/edit/,/extension/elasticsearch/sessions/,/extension/elasticsearch/sessions/new/,/extension/elasticsearch/sessions/edit/,/extension/elasticsearch/queries/,/extension/elasticsearch/queries/new/,/extension/elasticsearch/queries/edit/', 'For questions about using Project Platen, you can find me on Twitter at [@ayrpublishing](http://twitter.com/ayrpublishing/).\r\n\r\nTo learn more about using Symphony, go to: [getsymphony.com](http://getsymphony.com).', '<p>For questions about using Project Platen, you can find me on Twitter at <a href=\"http://twitter.com/ayrpublishing/\">@ayrpublishing</a>.</p>\n\n<p>To learn more about using Symphony, go to: <a href=\"http://getsymphony.com\">getsymphony.com</a>.</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (6, 'Elastic Search', '/system/preferences/', 'Project Platen uses ElasticSearch for its search functions. If you have not set up ElasticSearch before, you can follow the instructions at <https://github.com/nickdunn/elasticsearch>.\r\n\r\n', '<p>Project Platen uses ElasticSearch for its search functions. If you have not set up ElasticSearch before, you can follow the instructions at <a href=\"https://github.com/nickdunn/elasticsearch\">https://github.com/nickdunn/elasticsearch</a>.</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (7, 'Project Platen Cookies', '/system/preferences/', 'You need to provide a prefix for cookies unique to this book (this is so you can host multiple books on a single domain). The name should be in the form of a handle (without spaces).', '<p>You need to provide a prefix for cookies unique to this book (this is so you can host multiple books on a single domain). The name should be in the form of a handle (without spaces).</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (8, 'Useragent Details', '/system/preferences/', 'In order to use auto day/night reading mode, you need to check Utilize Geoplugin.', '<p>In order to use auto day/night reading mode, you need to check Utilize Geoplugin.</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (9, 'Editing .xsl', '/blueprints/pages/,/blueprints/pages/new/,/blueprints/pages/edit/,/blueprints/utilities/,/blueprints/utilities/new/,/blueprints/utilities/edit/', 'While you can edit the .xsl files from the admin panel, I suggest using a proper text editor.', '<p>While you can edit the .xsl files from the admin panel, I suggest using a proper text editor.</p>\n');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (10, 'URL Routes', '/extension/url_router/routes/', 'I prefer to create separate pages to handle URL parameters and hide them in `/back/` instead of including them on the landing page to cut down on database queries.', '<p>I prefer to create separate pages to handle URL parameters and hide them in <code>/back/</code> instead of including them on the landing page to cut down on database queries.</p>\n');

-- *** DATA:`tbl_elasticsearch_logs` ***

-- *** DATA:`tbl_entries` ***

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'save_and_return', 'enabled', 1.7);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'debugdevkit', 'enabled', '1.2.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'markdown', 'enabled', 1.15);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'importcsv', 'enabled', 0.3);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'useragent_details', 'enabled', '1.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'jit_image_manipulation', 'enabled', 1.18);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'apipage', 'enabled', '0.1.9');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'xssfilter', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'profiledevkit', 'enabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'maintenance_mode', 'enabled', 1.6);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'elasticsearch', 'enabled', '0.4.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'url_router', 'enabled', '2.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'selectbox_link_field', 'enabled', 1.26);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'export_ensemble', 'enabled', '2.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'globalresourceloader', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'cacheabledatasource', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (17, 'numberfield', 'enabled', '1.6.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'maplocationfield', 'enabled', '3.3.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (19, 'xmlimporter', 'enabled', 2.0);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (20, 'static_section', 'enabled', '1.8.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (21, 'documenter', 'enabled', '2.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (22, 'platen_cookies', 'enabled', 1.0);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (23, 'order_entries', 'enabled', '1.10.1');

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 1, '/backend/', 'AdminPagePreGenerate', 'appendElement');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 1, '/publish/edit/', 'EntryPostEdit', 'entryPostEdit');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 1, '/publish/new/', 'EntryPostCreate', 'entryPostEdit');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 2, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 2, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 5, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 5, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 5, '/frontend/', 'FrontendParamsPostResolve', 'addParameters');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 6, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 6, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 7, '/frontend/', 'FrontendOutputPostGenerate', 'parseXML');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 7, '/frontend/', 'FrontendPreRenderHeaders', 'setOutputTrigger');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 7, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 7, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 8, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 8, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 8, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 9, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 9, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 10, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 10, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 10, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 10, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (25, 10, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (26, 10, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (27, 10, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (28, 11, '/publish/new/', 'EntryPostCreate', 'indexEntry');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (29, 11, '/publish/edit/', 'EntryPostEdit', 'indexEntry');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (30, 11, '/frontend/', 'EventPostSaveFilter', 'indexEntry');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (31, 11, '/publish/', 'EntryPreDelete', 'deleteEntry');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (32, 11, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (33, 11, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 11, '/frontend/', 'FrontendPageResolved', 'generate_session');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 12, '/frontend/', 'FrontendPrePageResolve', 'frontendPrePageResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 14, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 15, '/frontend/', 'FrontendPageResolved', 'manipulatePageData');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (38, 15, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'preferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (39, 16, '/frontend/', 'DataSourcePreExecute', 'dataSourcePreExecute');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (40, 16, '/blueprints/datasources/', 'DatasourcePreCreate', 'dataSourceSave');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (41, 16, '/blueprints/datasources/', 'DatasourcePreEdit', 'dataSourceSave');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (42, 16, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (43, 20, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (44, 20, '/blueprints/sections/', 'AddSectionElements', 'addSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 20, '/blueprints/sections/', 'SectionPreCreate', 'saveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (46, 20, '/blueprints/sections/', 'SectionPreEdit', 'saveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (47, 20, '/backend/', 'AdminPagePreGenerate', 'adminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (48, 21, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (49, 21, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (50, 21, '/backend/', 'InitaliseAdminPageHead', 'loadAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (51, 21, '/backend/', 'InitaliseAdminPageHead', 'appendDocs');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (52, 22, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (53, 22, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (54, 22, '/frontend/', 'FrontendParamsPostResolve', 'addParameters');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (55, 23, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Order', 'order', 'order_entries', 1, 'no', 0, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Title', 'title', 'input', 1, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Text', 'text', 'textarea', 1, 'yes', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Tags', 'tags', 'taglist', 1, 'no', 3, 'sidebar', 'yes');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Introduction', 'home', NULL, NULL, NULL, NULL, 1);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'Table of Contents', 'chapter', NULL, NULL, NULL, NULL, 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'back', 'back', NULL, NULL, NULL, NULL, 9);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, 3, 'chapter', 'chapter', 'back', 'current-chapter', NULL, NULL, 10);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, NULL, 'Book API', 'api', NULL, NULL, NULL, NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, 5, 'v1.0', 'v1', 'api', NULL, NULL, NULL, 6);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, 6, 'Chapters', 'chapter', 'api/v1', NULL, NULL, NULL, 7);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, 3, 'day-night', 'day-night', 'back', NULL, NULL, NULL, 11);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, NULL, 'Search', 'search', NULL, NULL, NULL, NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, NULL, 'License and Copyright', 'license', NULL, NULL, NULL, NULL, 3);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (11, 6, 'Search', 'search', 'api/v1', NULL, 'api_search_chapters', NULL, 8);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (1, 1, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (2, 3, 'admin');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (7, 7, 'API');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (5, 8, 'XML');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (6, 8, 'API');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (8, 7, 'XML');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (12, 11, 'JSON');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (11, 11, 'API');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (1, 'Chapters', 'chapters', 1, 'no', 'no', 1, 'Book');

-- *** DATA:`tbl_sections_association` ***

-- *** DATA:`tbl_url_router` ***
INSERT INTO`tbl_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (3, '/\\/chapter\\/([0-9-]+?)/i', 'back/chapter/$1', 'route', 'no');
