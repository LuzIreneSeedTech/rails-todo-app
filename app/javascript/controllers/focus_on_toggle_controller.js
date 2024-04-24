import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="focus-on-toggle"
export default class extends Controller {
  static targets = ["label"]

  connect() {
    console.log("Hello focus on toggle")
  }

  toggleFocus(event) {
    this.labelTargets.forEach(label => label.classList.remove("bg-black text-white border-black"))
    const target = event.target.closest("[data-target-='focus.label']")
    
    if (target.checked) {
      target.nextElementSibling.classList.add("bg-black text-white border-black")
    }
  }
}
