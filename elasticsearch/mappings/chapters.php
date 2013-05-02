<?php
class elasticsearch_chapter {

    public function mapData(Array $data, Entry $entry) {
        $json = array();
        // var_dump($data);

        $json['_boost'] = 1;

        $json['title'] = $data['title']['value'];
        $json['text'] = $data['text']['value'];

        return $json;
    }

}