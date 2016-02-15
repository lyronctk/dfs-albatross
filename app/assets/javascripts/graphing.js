DATA = window['DATA'] || {}

$('#cy').cytoscape({
  zoomingEnabled: false,
  userZoomingEnabled: false,
  panningEnabled: false,
  userPanningEnabled: false,
  boxSelectionEnabled: false,

  style: cytoscape.stylesheet()
    .selector('node')
      .css({
        'content': 'data(label)',
        'text-valign': 'center',
        'color': 'data(label_color)',
        'text-outline-width': 2,
        'text-outline-color': 'mapData(size, 1, 3, #888, #000)',
        'background-color': 'mapData(size, 1, 3, #888, #000)',
        'width': 'mapData(size, 1, 3, 20, 30)',
        'height': 'mapData(size, 1, 3, 20, 30)'
      })
    .selector('edge')
      .css({
        'target-arrow-shape': 'triangle'
      })
    .selector(':selected')
      .css({
        'background-color': 'black',
        'line-color': 'black',
        'target-arrow-color': 'black',
        'source-arrow-color': 'black'
      })
    .selector('.faded')
      .css({
        'opacity': 0.25,
        'text-opacity': 0
      }),

  elements: DATA,

  layout: {
    name: 'breadthfirst',
    padding: 2
  },

  // on graph initial layout done (could be async depending on layout...)
  ready: function(){
    window.cy = this;

    // giddy up...

    cy.elements().unselectify();

    cy.on('tap', 'node', function(e){
      var node = e.cyTarget;
      var neighborhood = node.neighborhood().add(node);

      cy.elements().addClass('faded');
      neighborhood.removeClass('faded');
    });

    cy.on('tap', function(e){
      if( e.cyTarget === cy ){
        cy.elements().removeClass('faded');
      }
    });
  }
});
