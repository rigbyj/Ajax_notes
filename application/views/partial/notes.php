<?php
	foreach ($data as $value) {
?>

	<div class='notes_section'>
		<div class='notes_header'>
			<h2 class='title'><?= $value['title'] ?></h2>
			<form class='delete' action='/notes/delete' method='post'>
				<input type='hidden' name='id' value='<?= $value['id'] ?>'>
				<input type='submit' value='delete'>
			</form>
		</div>
		<div>
			<form class='modify' action='/notes/modify' method='post'>
				<textarea name='description' id='<?= $value['id'] ?>' placeholder='Enter description here...'><?= $value['description'] ?></textarea>
				<input type='hidden' name='id' value='<?= $value['id'] ?>'>
				<!-- <input type='submit' value='Hide me later'> -->
			</form>
		</div>
	</div>

<?php
	}
?>