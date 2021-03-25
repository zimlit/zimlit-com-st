import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["tab", "tabPanel"];
  initialize() {
    this.showTab()
  }

  change(e) {
    if (e.path.length == 9) {
      this.index = this.tabTargets.indexOf(e.target)
    } else {
      this.index = this.tabTargets.indexOf(e.path[1])
    }
    this.showTab(this.index)
  }


    showTab() {
      this.tabPanelTargets.forEach((el, i) => {
        if (i == this.index) {
          el.classList.remove('is-hidden')
        } else {
          el.classList.add('is-hidden')
        }
      })

      this.tabTargets.forEach((el, i) => {
        if (i == this.index) {
          el.classList.add('is-active')
        } else {
          el.classList.remove('is-active')
        }
      })
    }

    get index() {
      return parseInt(this.data.get('index'))
    }

    set index(value) {
      this.data.set("index", value)
      this.showTab()
    }
  }
