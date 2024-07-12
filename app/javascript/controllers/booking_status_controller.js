import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form"]

  connect() {
    this.formTarget.addEventListener("turbo:submit-end", this.handleSubmitEnd.bind(this))
  }

  disconnect() {
    this.formTarget.removeEventListener("turbo:submit-end", this.handleSubmitEnd.bind(this))
  }

  accept() {
    this.formTarget.querySelector("input[name='booking[status]']").value = "acceptée"
    this.formTarget.requestSubmit()
  }

  refuse() {
    this.formTarget.querySelector("input[name='booking[status]']").value = "declinée"
    this.formTarget.requestSubmit()
  }

  handleSubmitEnd(event) {
    const status = this.formTarget.querySelector("input[name='booking[status]']").value
    // Faites quelque chose avec le nouveau statut, comme mettre à jour l'affichage de la réservation
  }
}
