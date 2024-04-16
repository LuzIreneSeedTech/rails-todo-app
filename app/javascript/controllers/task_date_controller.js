import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-date"
export default class extends Controller {
  setToday() {
    // console.log("choosing date today")

    document.getElementById("calendar-btn").value = new Date().toISOString().slice(0, 10)
  }

  setTomorrow() {
    // console.log("choosing date tomorrow")

    let tomorrow = new Date()
    tomorrow.setDate(tomorrow.getDate() + 1)
    console.log(document.getElementById("calendar-btn").value = tomorrow.toISOString().slice(0, 10))
  }
}
