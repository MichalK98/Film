<template>
<div class="info">
	<div class="videoPadding">
    	<div class="videoWrapper">
  			<iframe width=560 height="349" src="https://www.youtube.com/embed/COvnHv42T-A" frameborder="5" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
  			</iframe>	
		</div>
	</div>
	<div class="title">
		<h1 class="display-4">X-Men: Apocalypse</h1>
		<hr class="break">
		<p class="description">
		Raven Darkholme / Mystique som fått veta vad som hänt hennes vän Magneto, försöker spåra upp honom och tar hjälp av Charles Xavier och hans telepatiförstärkningsmaskin, Cerebro. När En Sabah Nur känner Xaviers kraft ger det honom möjlighet att styra varenda människa på jorden och han bryter sig därför in på Xaviers skola och kidnappar Xavier.</p>
		
	</div>
	<div class="container">
  		<div class="row">
    		<div class="list col-sm-8">
    			<ul>
  					<li><b>Produktion Länder: </b>USA</li>
  					<li><b>Produktion År: </b>2016</li>
  					<li><b>Längd:</b> 147min</li>
  					<li><b>Genre: </b>Action, Äventyr, Science Fiction</li>
  					<li><b>Distribution: </b> Marvel Studios</li>
  					<li><b>Språk:</b> Engelska</li>
  					<li><b>Undertext:</b> Svenska</li>
  					<li><b>Producent:</b> Lauren Shuler Donner</li>
  					<li><b>Skådespelare:</b> James McAvoy, Michael Fassbender m.m.</li>

				</ul> 
    		</div>
    		<div class="col-sm-4">
    			<button type="button" class="btn btn-outline-success">Boka Nu</button>
    		</div>
    	</div>
  	</div>
</div>
</template>


<style>

.info{
	color: white;
	margin: 15px;
	margin-top: 20px;
    background-color: rgba(129, 131, 132, .3);
}

.videoPadding {
	padding: 0 20%;
}

.videoWrapper {
	position: relative;
	padding-bottom: 56.25%; /* 16:9 */
	padding-top: 25px;
	height: 0;
	background-color: red;
}

.videoWrapper iframe {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.break{
	border: solid 0.5px;
	color: white;
	width: 70%;
}

.description{
	width: 60%;
	margin: auto;
	text-align: left;
}

.container{
	margin-top: 25px;
	width: 60%;
}

.list{
	text-align: left;
	padding-left: 1px;
	border: solid white 0.5px;
	margin-bottom: 20px;
}

button{
	margin: 20px;
}

</style>