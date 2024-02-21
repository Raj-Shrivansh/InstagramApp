import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

$(function(){
    $('#masonry-container').masonry({
      itemSelector: '.box',
      columnWidth: 200,
      isAnimated: !Modernizr.csstransitions,
      isFitWidth: true
    });
  });