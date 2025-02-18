<!DOCTYPE html>
<html lang="en" dir="ltr">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="robots" content="noindex">
<title>Select: games - Adminer</title>
<link rel="stylesheet" type="text/css" href="adminer.php?file=default.css&amp;version=4.8.1">
<script src='adminer.php?file=functions.js&amp;version=4.8.1' nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg="></script>
<link rel="shortcut icon" type="image/x-icon" href="adminer.php?file=favicon.ico&amp;version=4.8.1">
<link rel="apple-touch-icon" href="adminer.php?file=favicon.ico&amp;version=4.8.1">

<body class="ltr nojs">
<script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">
mixin(document.body, {onkeydown: bodyKeydown, onclick: bodyClick});
document.body.className = document.body.className.replace(/ nojs/, ' js');
var offlineMessage = 'You are offline.';
var thousandsSeparator = ',';
</script>

<div id="help" class="jush-sql jsonly hidden"></div>
<script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qs('#help'), {onmouseover: function () { helpOpen = 1; }, onmouseout: helpMouseout});</script>

<div id="content">
<p id="breadcrumb"><a href="adminer.php">MySQL</a> &raquo; <a href='adminer.php?username=root' accesskey='1' title='Alt+Shift+1'>Server</a> &raquo; <a href="adminer.php?username=root&amp;db=quickstart">quickstart</a> &raquo; Select: games
<h2>Select: games</h2>
<div id='ajaxstatus' class='jsonly hidden'></div>
<p class="links"> <a href='adminer.php?username=root&amp;db=quickstart&amp;select=games' class='active '>Select data</a> <a href='adminer.php?username=root&amp;db=quickstart&amp;table=games'>Show structure</a> <a href='adminer.php?username=root&amp;db=quickstart&amp;create=games'>Alter table</a> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games'>New item</a>
<form action='' id='form'>
<div style='display: none;'><input type="hidden" name="username" value="root"><input type="hidden" name="db" value="quickstart"><input type="hidden" name="select" value="games"></div>
<fieldset><legend><a href='#fieldset-select'>Select</a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(toggle, 'fieldset-select');</script></legend><div id='fieldset-select' class='hidden'>
<div><select name='columns[0][fun]'><option><optgroup label="Functions"><option>char_length<option>date<option>from_unixtime<option>lower<option>round<option>floor<option>ceil<option>sec_to_time<option>time_to_sec<option>upper</optgroup><optgroup label="Aggregation"><option>avg<option>count<option>count distinct<option>group_concat<option>max<option>min<option>sum</optgroup></select><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qsl('select, input'), {onmouseover: function (event) { helpMouseover.call(this, event, getTarget(event).value && getTarget(event).value.replace(/ |$/, '(') + ')', 1) }, onmouseout: helpMouseout});</script><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('select').onchange = function () { helpClose(); qsl('select, input', this.parentNode).onchange(); };</script>(<select name='columns[0][col]'><option value=''><option value="id">id<option value="name">name<option value="description">description<option value="created_at">created_at</select><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('select').onchange = selectAddRow;</script>)</div>
</div></fieldset>
<fieldset><legend><a href='#fieldset-search'>Search</a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(toggle, 'fieldset-search');</script></legend><div id='fieldset-search' class='hidden'>
<div><select name='where[0][col]'><option value=''>(anywhere)<option value="id">id<option value="name">name<option value="description">description<option value="created_at">created_at</select><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('select').onchange = selectAddRow;</script><select name='where[0][op]'><option>=<option>&lt;<option>&gt;<option>&lt;=<option>&gt;=<option>!=<option>LIKE<option>LIKE %%<option>REGEXP<option>IN<option>FIND_IN_SET<option>IS NULL<option>NOT LIKE<option>NOT REGEXP<option>NOT IN<option>IS NOT NULL<option>SQL</select><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('select').onchange = function () { this.parentNode.firstChild.onchange(); };</script><input type='search' name='where[0][val]' value=''><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qsl('input'), {oninput: function () { this.parentNode.firstChild.onchange(); }, onkeydown: selectSearchKeydown, onsearch: selectSearchSearch});</script></div>
</div></fieldset>
<fieldset><legend><a href='#fieldset-sort'>Sort</a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(toggle, 'fieldset-sort');</script></legend><div id='fieldset-sort' class='hidden'>
<div><select name='order[0]'><option value=''><option value="id">id<option value="name">name<option value="description">description<option value="created_at">created_at</select><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('select').onchange = selectAddRow;</script><label><input type='checkbox' name='desc[0]' value='1'>descending</label></div>
</div></fieldset>
<fieldset><legend>Limit</legend><div><input type='number' name='limit' class='size' value='50'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('input').oninput = selectFieldChange;</script></div></fieldset>
<fieldset><legend>Text length</legend><div><input type='number' name='text_length' class='size' value='100'></div></fieldset>
<fieldset><legend>Action</legend><div><input type='submit' value='Select'> <span id='noindex' title='Full table scan'></span><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">
var indexColumns = {
	"id": null
}
;
selectFieldChange.call(qs('#form')['select']);
</script>
</div></fieldset>
</form>
<p><code class='jush-sql'>SELECT * FROM `games` LIMIT 50</code> <span class='time'>(0.000 s)</span> <a href='adminer.php?username=root&amp;db=quickstart&amp;sql=SELECT+%2A%0AFROM+%60games%60%0ALIMIT+50'>Edit</a></p>
<form action='' method='post' enctype='multipart/form-data'>
<div class='scrollable'><table id='table' cellspacing='0' class='nowrap checkable'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qs('#table'), {onclick: tableClick, ondblclick: partialArg(tableClick, true), onkeydown: editingKeydown});</script>
<thead><tr><td><input type='checkbox' id='all-page' class='jsonly'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qs('#all-page').onclick = partial(formCheck, /check/);</script> <a href='/adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;modify=1'>Modify</a><th id='th[id]'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qsl('th'), {onmouseover: partial(columnMouse), onmouseout: partial(columnMouse, ' hidden')});</script><a href="adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;order%5B0%5D=id"><span title="int(11)">id</span></a><span class='column hidden'><a href='adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;order%5B0%5D=id&amp;desc%5B0%5D=1' title='descending' class='text'> ↓</a><a href="#fieldset-search" title="Search" class="text jsonly"> =</a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(selectSearch, 'id');</script>
</span><th id='th[name]'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qsl('th'), {onmouseover: partial(columnMouse), onmouseout: partial(columnMouse, ' hidden')});</script><a href="adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;order%5B0%5D=name"><span title="varchar(255)">name</span></a><span class='column hidden'><a href='adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;order%5B0%5D=name&amp;desc%5B0%5D=1' title='descending' class='text'> ↓</a><a href="#fieldset-search" title="Search" class="text jsonly"> =</a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(selectSearch, 'name');</script>
</span><th id='th[description]'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qsl('th'), {onmouseover: partial(columnMouse), onmouseout: partial(columnMouse, ' hidden')});</script><a href="adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;order%5B0%5D=description"><span title="text">description</span></a><span class='column hidden'><a href='adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;order%5B0%5D=description&amp;desc%5B0%5D=1' title='descending' class='text'> ↓</a><a href="#fieldset-search" title="Search" class="text jsonly"> =</a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(selectSearch, 'description');</script>
</span><th id='th[created_at]'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qsl('th'), {onmouseover: partial(columnMouse), onmouseout: partial(columnMouse, ' hidden')});</script><a href="adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;order%5B0%5D=created_at"><span title="datetime">created_at</span></a><span class='column hidden'><a href='adminer.php?username=root&amp;db=quickstart&amp;select=games&amp;order%5B0%5D=created_at&amp;desc%5B0%5D=1' title='descending' class='text'> ↓</a><a href="#fieldset-search" title="Search" class="text jsonly"> =</a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(selectSearch, 'created_at');</script>
</span></thead>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=1'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=1' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=1][id]' data-text='0'>1</td><td id='val[&amp;where%5Bid%5D=1][name]' data-text='0'>The Witcher 3</td><td id='val[&amp;where%5Bid%5D=1][description]' data-text='1'>Open-world RPG od CD Projekt Red</td><td id='val[&amp;where%5Bid%5D=1][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=2'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=2' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=2][id]' data-text='0'>2</td><td id='val[&amp;where%5Bid%5D=2][name]' data-text='0'>Cyberpunk 2077</td><td id='val[&amp;where%5Bid%5D=2][description]' data-text='1'>Sci-fi RPG od CD Projekt Red</td><td id='val[&amp;where%5Bid%5D=2][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=3'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=3' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=3][id]' data-text='0'>3</td><td id='val[&amp;where%5Bid%5D=3][name]' data-text='0'>GTA V</td><td id='val[&amp;where%5Bid%5D=3][description]' data-text='1'>Akční hra od Rockstar Games</td><td id='val[&amp;where%5Bid%5D=3][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=4'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=4' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=4][id]' data-text='0'>4</td><td id='val[&amp;where%5Bid%5D=4][name]' data-text='0'>Minecraft</td><td id='val[&amp;where%5Bid%5D=4][description]' data-text='1'>Sandbox hra s nekonečnými možnostmi</td><td id='val[&amp;where%5Bid%5D=4][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=5'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=5' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=5][id]' data-text='0'>5</td><td id='val[&amp;where%5Bid%5D=5][name]' data-text='0'>Rust</td><td id='val[&amp;where%5Bid%5D=5][description]' data-text='1'>Survival multiplayer hra</td><td id='val[&amp;where%5Bid%5D=5][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=6'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=6' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=6][id]' data-text='0'>6</td><td id='val[&amp;where%5Bid%5D=6][name]' data-text='0'>CS:GO</td><td id='val[&amp;where%5Bid%5D=6][description]' data-text='1'>Taktická FPS hra od Valve</td><td id='val[&amp;where%5Bid%5D=6][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=7'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=7' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=7][id]' data-text='0'>7</td><td id='val[&amp;where%5Bid%5D=7][name]' data-text='0'>Half-Life 2</td><td id='val[&amp;where%5Bid%5D=7][description]' data-text='1'>Legendární FPS od Valve</td><td id='val[&amp;where%5Bid%5D=7][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=8'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=8' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=8][id]' data-text='0'>8</td><td id='val[&amp;where%5Bid%5D=8][name]' data-text='0'>Portal 2</td><td id='val[&amp;where%5Bid%5D=8][description]' data-text='1'>Logická hra s portály</td><td id='val[&amp;where%5Bid%5D=8][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=9'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=9' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=9][id]' data-text='0'>9</td><td id='val[&amp;where%5Bid%5D=9][name]' data-text='0'>Red Dead Redemption 2</td><td id='val[&amp;where%5Bid%5D=9][description]' data-text='1'>Western open-world hra</td><td id='val[&amp;where%5Bid%5D=9][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=10'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=10' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=10][id]' data-text='0'>10</td><td id='val[&amp;where%5Bid%5D=10][name]' data-text='0'>Elden Ring</td><td id='val[&amp;where%5Bid%5D=10][description]' data-text='1'>Souls-like RPG od FromSoftware</td><td id='val[&amp;where%5Bid%5D=10][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=11'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=11' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=11][id]' data-text='0'>11</td><td id='val[&amp;where%5Bid%5D=11][name]' data-text='0'>Dark Souls 3</td><td id='val[&amp;where%5Bid%5D=11][description]' data-text='1'>Těžká RPG hra</td><td id='val[&amp;where%5Bid%5D=11][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=12'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=12' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=12][id]' data-text='0'>12</td><td id='val[&amp;where%5Bid%5D=12][name]' data-text='0'>Sekiro</td><td id='val[&amp;where%5Bid%5D=12][description]' data-text='1'>Samurajská hra od FromSoftware</td><td id='val[&amp;where%5Bid%5D=12][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=13'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=13' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=13][id]' data-text='0'>13</td><td id='val[&amp;where%5Bid%5D=13][name]' data-text='0'>Assassin’s Creed Valhalla</td><td id='val[&amp;where%5Bid%5D=13][description]' data-text='1'>Akční adventura</td><td id='val[&amp;where%5Bid%5D=13][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=14'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=14' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=14][id]' data-text='0'>14</td><td id='val[&amp;where%5Bid%5D=14][name]' data-text='0'>FIFA 23</td><td id='val[&amp;where%5Bid%5D=14][description]' data-text='1'>Fotbalová hra od EA Sports</td><td id='val[&amp;where%5Bid%5D=14][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=15'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=15' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=15][id]' data-text='0'>15</td><td id='val[&amp;where%5Bid%5D=15][name]' data-text='0'>The Sims 4</td><td id='val[&amp;where%5Bid%5D=15][description]' data-text='1'>Simulátor života od EA</td><td id='val[&amp;where%5Bid%5D=15][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=16'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=16' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=16][id]' data-text='0'>16</td><td id='val[&amp;where%5Bid%5D=16][name]' data-text='0'>Overwatch 2</td><td id='val[&amp;where%5Bid%5D=16][description]' data-text='1'>Týmová FPS hra</td><td id='val[&amp;where%5Bid%5D=16][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=17'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=17' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=17][id]' data-text='0'>17</td><td id='val[&amp;where%5Bid%5D=17][name]' data-text='0'>Doom Eternal</td><td id='val[&amp;where%5Bid%5D=17][description]' data-text='1'>Brutální FPS od id Software</td><td id='val[&amp;where%5Bid%5D=17][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=18'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=18' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=18][id]' data-text='0'>18</td><td id='val[&amp;where%5Bid%5D=18][name]' data-text='0'>Skyrim</td><td id='val[&amp;where%5Bid%5D=18][description]' data-text='1'>Epické RPG od Bethesda</td><td id='val[&amp;where%5Bid%5D=18][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr><td><input type='checkbox' name='check[]' value='where%5Bid%5D=19'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=19' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=19][id]' data-text='0'>19</td><td id='val[&amp;where%5Bid%5D=19][name]' data-text='0'>Hollow Knight</td><td id='val[&amp;where%5Bid%5D=19][description]' data-text='1'>Metroidvania plošinovka</td><td id='val[&amp;where%5Bid%5D=19][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
<tr class="odd"><td><input type='checkbox' name='check[]' value='where%5Bid%5D=20'> <a href='adminer.php?username=root&amp;db=quickstart&amp;edit=games&amp;where%5Bid%5D=20' class='edit'>edit</a><td id='val[&amp;where%5Bid%5D=20][id]' data-text='0'>20</td><td id='val[&amp;where%5Bid%5D=20][name]' data-text='0'>Stardew Valley</td><td id='val[&amp;where%5Bid%5D=20][description]' data-text='1'>Farmaření a RPG mix</td><td id='val[&amp;where%5Bid%5D=20][created_at]' data-text='0'>2025-02-05 12:03:44</td></tr>
</table>
</div>
<div class='footer'><div>
<fieldset><legend>Whole result</legend><label><input type='checkbox' name='all' value='1'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('input').onclick = function () { var checked = formChecked(this, /check/); selectCount('selected', this.checked ? '20' : checked); selectCount('selected2', this.checked || !checked ? '20' : checked); };</script>20 rows</label>
</fieldset>
<fieldset class="jsonly"><legend>Modify</legend><div>
<input type="submit" value="Save" title="Ctrl+click on a value to modify it.">
</div></fieldset>
<fieldset><legend>Selected <span id="selected"></span></legend><div>
<input type="submit" name="edit" value="Edit">
<input type="submit" name="clone" value="Clone">
<input type="submit" name="delete" value="Delete"><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('input').onclick = function () { return confirm('Are you sure?'); };</script></div></fieldset>
<fieldset><legend><a href='#fieldset-export'>Export <span id='selected2'></span></a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(toggle, 'fieldset-export');</script></legend><div id='fieldset-export' class='hidden'>
<select name='output'><option value="text" selected>open<option value="file">save<option value="gz">gzip</select> <select name='format'><option value="sql" selected>SQL<option value="csv">CSV,<option value="csv;">CSV;<option value="tsv">TSV</select> <input type='submit' name='export' value='Export'>
</div></fieldset>
</div></div>
<div><a href='#import'>Import</a><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('a').onclick = partial(toggle, 'import');</script><span id='import' class='hidden'>: <input type='file' name='csv_file'> <select name='separator'><option value="csv">CSV,<option value="csv;">CSV;<option value="tsv">TSV</select> <input type='submit' name='import' value='Import'></span></div><input type='hidden' name='token' value='314660:131187'>
</form>
<script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">tableCheck();</script>
</div>

<form action='' method='post'>
<div id='lang'>Language: <select name='lang'><option value="en" selected>English<option value="ar">العربية<option value="bg">Български<option value="bn">বাংলা<option value="bs">Bosanski<option value="ca">Català<option value="cs">Čeština<option value="da">Dansk<option value="de">Deutsch<option value="el">Ελληνικά<option value="es">Español<option value="et">Eesti<option value="fa">فارسی<option value="fi">Suomi<option value="fr">Français<option value="gl">Galego<option value="he">עברית<option value="hu">Magyar<option value="id">Bahasa Indonesia<option value="it">Italiano<option value="ja">日本語<option value="ka">ქართული<option value="ko">한국어<option value="lt">Lietuvių<option value="ms">Bahasa Melayu<option value="nl">Nederlands<option value="no">Norsk<option value="pl">Polski<option value="pt">Português<option value="pt-br">Português (Brazil)<option value="ro">Limba Română<option value="ru">Русский<option value="sk">Slovenčina<option value="sl">Slovenski<option value="sr">Српски<option value="sv">Svenska<option value="ta">த‌மிழ்<option value="th">ภาษาไทย<option value="tr">Türkçe<option value="uk">Українська<option value="vi">Tiếng Việt<option value="zh">简体中文<option value="zh-tw">繁體中文</select><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">qsl('select').onchange = function () { this.form.submit(); };</script> <input type='submit' value='Use' class='hidden'>
<input type='hidden' name='token' value='589166:929849'>
</div>
</form>
<form action="" method="post">
<p class="logout">
<input type="submit" name="logout" value="Logout" id="logout">
<input type="hidden" name="token" value="314660:131187">
</p>
</form>
<div id="menu">
<h1>
<a href='https://www.adminer.org/' target="_blank" rel="noreferrer noopener" id='h1'>Adminer</a> <span class="version">4.8.1</span>
<a href="https://www.adminer.org/#download" target="_blank" rel="noreferrer noopener" id="version"></a>
</h1>
<script src='adminer.php?file=jush.js&amp;version=4.8.1' nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg="></script>
<script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">
var jushLinks = { sql: [ 'adminer.php?username=root&db=quickstart&table=$&', /\b(comments|games|posts)\b/g ] };
jushLinks.bac = jushLinks.sql;
jushLinks.bra = jushLinks.sql;
jushLinks.sqlite_quo = jushLinks.sql;
jushLinks.mssql_bra = jushLinks.sql;
bodyLoad('10', true);
</script>
<form action="">
<p id="dbs">
<input type="hidden" name="username" value="root"><span title='database'>DB</span>: <select name='db'><option value=""><option>bazar<option>carshop<option>company<option>eshop<option>information_schema<option>library<option>marwfitness<option>mysql<option>osspZaN<option>performance_schema<option>PP_office<option>practise<option>practise3<option>project2<option>PZ_01<option selected>quickstart<option>school<option>sys<option>VozovyPark<option>vzorova_zkouskova_databaze_reseni<option>wptest<option>ztraty_nalezy</select><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qsl('select'), {onmousedown: dbMouseDown, onchange: dbChange});</script>
<input type='submit' value='Use' class='hidden'>
</p></form>
<p class='links'><a href='adminer.php?username=root&amp;db=quickstart&amp;sql='>SQL command</a>
<a href='adminer.php?username=root&amp;db=quickstart&amp;import='>Import</a>
<a href='adminer.php?username=root&amp;db=quickstart&amp;dump=games' id='dump'>Export</a>
<a href="adminer.php?username=root&amp;db=quickstart&amp;create=">Create table</a>
<ul id='tables'><script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">mixin(qs('#tables'), {onmouseover: menuOver, onmouseout: menuOut});</script>
<li><a href="adminer.php?username=root&amp;db=quickstart&amp;select=comments" class='select' title='Select data'>select</a> <a href="adminer.php?username=root&amp;db=quickstart&amp;table=comments" class='structure' title='Show structure'>comments</a>
<li><a href="adminer.php?username=root&amp;db=quickstart&amp;select=games" class='active select' title='Select data'>select</a> <a href="adminer.php?username=root&amp;db=quickstart&amp;table=games" class='structure' title='Show structure'>games</a>
<li><a href="adminer.php?username=root&amp;db=quickstart&amp;select=posts" class='select' title='Select data'>select</a> <a href="adminer.php?username=root&amp;db=quickstart&amp;table=posts" class='structure' title='Show structure'>posts</a>
</ul>
</div>
<script nonce="NWQ4ZDk2ZjZmYTc4NDZhYzhlNTAwZjg5ZDc3MmExZDg=">setupSubmitHighlight(document);</script>
