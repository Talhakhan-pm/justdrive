import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [
    'input'
  ]

  connect(){
    console.log("Address controller");
  }

  initGoogle(){
    console.log('google is fired up bro');
    console.log(google);
    new google.maps.places.Autocomplete(this.inputTarget)
  }

}