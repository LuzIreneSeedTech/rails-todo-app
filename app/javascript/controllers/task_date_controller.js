import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-date"
export default class extends Controller {

  setToday(event) {
    // console.log("choosing date today")
    this.toggleBackground(event.currentTarget);

    document.getElementById("calendar-btn").value = new Date().toISOString().slice(0, 10)
  }

  setTomorrow(event) {
    // console.log("choosing date tomorrow")
    this.toggleBackground(event.currentTarget);

    let tomorrow = new Date()
    tomorrow.setDate(tomorrow.getDate() + 1)
    document.getElementById("calendar-btn").value = tomorrow.toISOString().slice(0, 10)
  }

  pickDate(event) {
    this.toggleBackground(event.currentTarget);
  }

  toggleBackground(clickedButton) {
    const button = document.querySelectorAll(".task-date-button")

    button.forEach(button => {
      button.classList.remove("active-button");
    });

    clickedButton.classList.add("active-button");
  }
}
