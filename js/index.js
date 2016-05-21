var list = document.getElementById('list') 
ajax('http://115.159.89.64/rank/index.php/index/ajax','',function(data){
		var data=JSON.parse(data);
		for(var i=0;i<data.length;i++){
			data[i].Rank=Number(data[i].Rank);
		}
		var example1 = new Vue({
  		el: '#example-1',
		methods:{
			sort: function(event){
			if(this.order==1){
				this.order=-1;
			}
			else{
				this.order=1;
			}
			}
		},
  			data: {
			order: 1,
    		items: data
 		 }
		})
})

ajax('http://115.159.89.64/rank/index.php/index/top','',function(data){
		var data=JSON.parse(data);
		for(var i=0;i<data.length;i++){
			data[i].Rank=Number(data[i].Rank);
		}
		var example2 = new Vue({
  		el: '#example-2',
		methods:{
			sort: function(event){
			if(this.order==1){
				this.order=-1;
			}
			else{
				this.order=1;
			}
			}
		},
  			data: {
			order: 1,
    		items: data
 		 }
		})
})
ajax('http://115.159.89.64/rank/index.php/index/rankfull','',function(data){
		var data=JSON.parse(data);
		for(var i=0;i<data.length;i++){
			data[i].Rank=Number(data[i].Rank);
		}
		var example3 = new Vue({
  		el: '#example-3',
		methods:{
			sort: function(event){
			if(this.order==1){
				this.order=-1;
			}
			else{
				this.order=1;
			}
			}
		},
  			data: {
			order: 1,
    		items: data
 		 }
		})
})

//数据传输函数  
function ajax(url,data,fun,argument){                            //只有这的url不用更改，是一个参数，其余的URL 都要改
	// var sc = document.getElementById('school');
	// var nm = document.getElementById('name');
	var ajax = new XMLHttpRequest();

	ajax.open("POST",url,true);
	ajax.setRequestHeader('Content-Type','application/x-www-form-urlencode');
	ajax.send(data);
	//alert(data);
	ajax.onreadystatechange = function(){
		if(ajax.readyState == 4){
			if((ajax.status >=200 && ajax.status < 300) || (ajax.status == 304)){
				//alert(ajax.responseText);
				fun(ajax.responseText);
			}else{
				//alert("错误：ajax.status")
			}
		}
	}
}