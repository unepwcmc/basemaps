// ---------------------------------------------------------------------
// Common Colors
@water: transparent;
@land: transparent;


Map {
  background-color: @land;
}

// ---------------------------------------------------------------------
// Political boundaries
#admin {
	line-width: 0.2;
	line-color: #000;
  [maritime=1] {
    // downplay boundaries that are over water
    line-color: @water;
  }
  // Countries
  [admin_level=2] {
    line-width: 0.8;
    line-cap: round;
    [zoom>=4] { line-width: 1.2; }
    [zoom>=6] { line-width: 2; }
    [zoom>=8] { line-width: 4; }
    [disputed=1] { line-dasharray: 4,4; }
  }
  // States / Provices / Subregions
  [admin_level>=3] {
	line-width: 0.2;
	line-color: #000;
    [zoom=6] { line-width: 0.6; }
    [zoom=7] { 
      line-width: 1.5;
	  line-color: #686868;
	  line-dasharray: 1,5;
	  line-cap: round;
    }
    [zoom>=8] {
	line-width: 2;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
    }
    [zoom>=12] { line-width: 2; }
  }
}

// ---------------------------------------------------------------------
// Water Features 
#water {
  polygon-fill: @water;
  // Map tiles are 256 pixels by 256 pixels wide, so the height 
  // and width of tiling pattern images must be factors of 256. 
  //polygon-pattern-file: url(pattern/wave.png);
  [zoom<=5] {
    // Below zoom level 5 we use Natural Earth data for water,
    // which has more obvious seams that need to be hidden.
    polygon-gamma: 0.4;
  }
  /**/
}

#waterway {
  line-color: @water * 0.9;
  line-cap: round;
  line-width: 0.5;
  [class='river'] {
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [class='stream'],
  [class='stream_intermittent'],
  [class='canal'] {
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
  [class='stream_intermittent'] { line-dasharray: 6,2,2,2; }
}

// ---------------------------------------------------------------------
// Aeroways 
#aeroway [zoom>=12] {
  ['mapnik::geometry_type'=2] {
    line-color: @land * 0.96;
    [type='runway'] { line-width: 5; }    
    [type='taxiway'] {  
      line-width: 1;
      [zoom>=15] { line-width: 2; }
    }
  }    
  ['mapnik::geometry_type'=3] {
    polygon-fill: @land * 0.96;
    [type='apron'] {
      polygon-fill: @land * 0.98;  
    }  
  }
}


// ---------------------------------------------------------------------
// Landuse areas 


// ---------------------------------------------------------------------
// Terrain //


// ==================================================================
// CONTOURS
// ================================================================== 

#contour {
  line-color: #ccc;
  line-opacity: 0.75;
  }

#contour.label {
    text-name: "[ele]+' m'";
    text-face-name: @sans;
    text-placement: line;
    text-size: 9;
    text-fill: darken(@land,50);
    text-avoid-edges: true;
    text-halo-fill: @land;
    text-halo-radius: 0.5;
    text-halo-rasterizer: fast;
}


// ---------------------------------------------------------------------
// Buildings 


