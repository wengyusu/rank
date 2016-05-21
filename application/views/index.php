<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
<title>Rank</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<link href="../rank/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../rank/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../rank/js/vue.js"></script>
<style type="text/css">
[v-cloak] {display:none}
</style>
</head>

<body>
<div class="container">
<div class="panel panel-default" >
 <div class="panel-body">
<table class="table table sorter table-striped table-bordered" id="example-2" v-cloak="">
<thead>
<caption>
<span><b>日亚实时TOP100</b></span>
</caption>
<tr class="active">
<th class="col-md-8">Name</td>
<th class="col-md-4" v-on:click="sort" role="button">Rank</td>
</tr>
</thead>
<tbody>

<tr v-for="item in items | orderBy 'Rank' order ">
<td class="col-md-8" v-cloak>{{item.Name}}</td>
<td class="col-md-4" v-cloak>{{item.Rank}}</td>
</tr>
</tbody>
</table>
</br>
</br>
</br>
<table class="table table sorter table-striped table-bordered" id="example-1">
<thead>
<caption>
<span><b>2016春季新番(精简版)</b></span>
</caption>
<tr class="active">
<th class="col-md-8">Name</td>
<th class="col-md-4" v-on:click="sort" role="button">Rank</td>
</tr>
</thead>
<tbody>

<tr v-for="item in items | orderBy 'Rank' order " v-cloak>
<td class="col-md-8" >{{item.Name}}</td>
<td class="col-md-4" >{{item.Rank}}</td>
</tr>
</tbody>
</table>
</br>
</br>
</br>
<table class="table table sorter table-striped table-bordered" id="example-3">
<thead>
<caption>
<span><b>2016春季新番(完整版)</b></span>
</caption>
<tr class="active">
<th class="col-md-8">Name</td>
<th class="col-md-4" v-on:click="sort" role="button">Rank</td>
</tr>
</thead>
<tbody>

<tr v-for="item in items | orderBy 'Rank' order " v-cloak>
<td class="col-md-8" >{{item.Name}}</td>
<td class="col-md-4" >{{item.Rank}}</td>
</tr>
</tbody>
</table>
</div>
<!-- <ul id="example-1">
  <li v-for="item in items">
    {{ item.Name}}
    {{ item.Rank}}

  </li>
</ul> -->
</div>
</div>
</body>


<script type="text/javascript" src="../rank/js/index.js"></script>		
</html>