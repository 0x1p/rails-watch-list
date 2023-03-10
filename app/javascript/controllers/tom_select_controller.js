import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    // new TomSelect(this.element)
    console.log("I'm here")
    new TomSelect(this.element,{
      persist: false,
      createOnBlur: true,
      create: true
    });
  }
}
