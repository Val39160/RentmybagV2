import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-price"
export default class extends Controller {
  static values = { priceperday: Number }
  static targets = ["startDate", "endDate", "totalPrice"]
    connect() {
      const pricePerDay = this.priceperdayValue.value
      console.log(this.startDateTarget)
    }
  calculPrice() {
    console.log("Calculating price...")
    const startDate = new Date(this.startDateTarget.value)
    const endDate = new Date(this.endDateTarget.value)

    // Vérifier si les dates sont valides
    if (!isNaN(startDate) && !isNaN(endDate) && startDate < endDate) {
      const diffTime = Math.abs(endDate - startDate)
      const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24))
      console.log(diffDays)
      // Récupérer le prix par jour depuis l'attribut data-price-per-day
      const pricePerDay = this.priceperdayValue

      // Calculer le prix total
      const totalPrice = diffDays * pricePerDay
        console.log(totalPrice)
      // Mettre à jour le champ d'input avec le prix total
      this.totalPriceTarget.textContent = totalPrice;
        //console.log(totalPrice)
    } else {
      // Gérer le cas où les dates ne sont pas valides ou dans un ordre incorrect
      console.error("Invalid dates or order")

      this.totalPriceTarget.textContent = 0

    }
  }
}
