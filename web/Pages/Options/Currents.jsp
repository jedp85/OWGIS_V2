<%-- 
    Document   : Palettes
    Created on : Aug 3, 2012, 6:26:56 PM
    Author     : Olmo Zavala-Romero
--%>


<c:if test='${mobile}'>
	<!-- Color Picker-->
	<div class="ui-grid-a">
		<div class="ui-block-a">
			<h4> Color</h4>
		</div>
		<div class="ui-block-b">
			<input type='text' name="currentsColor" id="currentsColor" />
		</div>
	</div>
	<!-- Number of particles -->
	<label for="numParticlesSlider" id="numParticles"># Of Particles</label>
	<input type="range" name="numParticlesSlider" id="numParticlesSlider" />
	<!-- Particles speed -->
	<label for="particleSpeedSlider"> Particles speed </label>
	<input data-mini="true" type="range" id="particleSpeedSlider" name="particleSpeedSlider" />
	<!-- Particles Life time-->
	<label for="particleLifeTimeSlider">Particles life time</label>
	<input data-mini="true" type="range" id="particleLifeTimeSlider" name="particleLifeTimeSlider" />
	<div class="ui-grid-a">
		<div class="ui-block-a">
			<a href="#" class="ui-btn ui-corner-all ui-mini" 
			   onclick="owgis.ncwms.currents.style.reset();" > Reset</a>
		</div>
		<div class="ui-block-b" >
			<a href="#" data-theme="b" class="ui-btn ui-icon-pause ui-btn-icon-left ui-mini
							   ui-corner-all"  id="currentsPlayPauseButton"
			   onclick="owgis.ncwms.currents.playPause()" >Pause</a>
		</div>
			
	</div>
</c:if>
<c:if test='${!mobile}'>
	<!-- Color Picker-->
	<div class="row ">
		<div class="col-xs-4 col-xs-offset-1 invShadow " > Color </div>
		<div class="col-xs-5 invShadow " > 
			<input type='text' id='currentsColor' />
		</div>
	</div><!-- Row -->
	<!-- Number of particles -->
	<div class="row defRowSpace">
		<div class="col-xs-12 invShadow " > # Of Particles 
			<span id="numParticles"></span>
		</div>
	</div>
	<div class="row defRowSpace">
		<div class="col-xs-10 col-xs-offset-1 " > 
			<div id="numParticlesSlider"></div>
		</div>
	</div>
	<!-- Particles speed -->
	<div class="row defRowSpace">
		<div class="col-xs-12 invShadow " > Particles speed </div>
	</div>
	<div class="row defRowSpace">
		<div class="col-xs-10 col-xs-offset-1 " > 
			<div id="particleSpeedSlider"></div>
		</div>
	</div>
	<!-- Particles Life time-->
	<div class="row defRowSpace">
		<div class="col-xs-12 invShadow " > Particles life time</div>
	</div>
	<div class="row defRowSpace">
		<div class="col-xs-10 col-xs-offset-1 " > 
			<div id="particleLifeTimeSlider"></div>
		</div>
	</div>
	<div class="row defRowSpace">
		<div class="col-xs-3 " > 
			<div class="buttonStyle "
				 onclick="owgis.ncwms.currents.style.reset();" > 
				Reset 
			</div>
		</div>
		<div class="col-xs-2 col-xs-offset-2 " > 
			<a class="btn btn-default btn-xs " href="#" 
			   onclick="owgis.ncwms.currents.playPause()"
			   title="<fmt:message key='ncwms.anim.help.play'/>/<fmt:message key='ncwms.anim.help.pause'/>" >
				<span id="currentsPlayPauseButton" class="glyphicon glyphicon-pause"></span>
			</a>
		</div>
	</div>
		
</c:if>
