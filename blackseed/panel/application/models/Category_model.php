<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category_Model extends CI_Model{

    public function __construct()
    {
        parent::__construct();
        $this->table = 'categories';
    }

    public function get($where = array()){
        $row = $this->db
                    ->where($where)
                    ->get($this->table)
                    ->row();
        return $row;
    }

    public function get_all($where = array(), $order_by = 'id ASC', $select = '*', $limit = array()){
        $row = $this->db
            ->select($select)
            ->from($this->table)
            ->where($where);

        if(!empty($order_by))
            $this->db->order_by($order_by);

        if(!empty($limit))
            $this->db->limit($limit["count"], $limit["start"]);

        $result = $this->db->get()->result();

        return $result;
    }

    public function insert($data = array()){
        $result = $this->db
            ->insert($this->table, $data);
        return $result;
    }

    public function update($data = array(), $where = array()){
        $result = $this->db
            ->where($where)
            ->update($this->table, $data);
        return $result;
    }

    public function delete($where){
        $result = $this->db
            ->where($where)
            ->delete($this->table);
        return $result;
    }

    public function query($query){
        $result = $this->db
            ->query($query)
            ->result();
        return $result;
    }

    public function get_last_id(){
        return $this->db->inser_id();
    }

    public function num_rows($query){
        $results = $this->db
            ->query($query)
            ->num_rows();
        return $results;
    }
}