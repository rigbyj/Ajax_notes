<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Note extends CI_Model {
  
  public function all() {
    return $this->db->query("SELECT * FROM notes  ORDER BY updated_at desc")->result_array();
  }

  public function create($new_note) {
    $query = "INSERT INTO notes (title, created_at, updated_at) VALUES (?, NOW(), NOW())";
    // $values = array($new_quote['author'], $new_quote['quote']);
    return $this->db->query($query, $new_note['title']);
  }

  public function delete($id) {
    $query = "DELETE FROM notes WHERE id=?";
    $this->db->query($query, $id);
  }

  public function modify($modified_note) {
    $query = "UPDATE notes SET description=? WHERE id=?";
    $values = array($modified_note['description'], $modified_note['id']);
    $this->db->query($query, $values);
  }
}