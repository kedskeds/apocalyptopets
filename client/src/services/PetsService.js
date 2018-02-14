import Api from '@/services/Api'

export default {
  fetchPets () {
    return Api().get('pets')
  },

  addPet (params) {
    return Api().post('pets', params)
  },

  updatePet (params) {
    return Api().put('pets/' + params.id, params)
  },

  getPet (params) {
    return Api().get('pet/' + params.id)
  },

  deletePet (id) {
    return Api().delete('pets/' + id)
  }
}