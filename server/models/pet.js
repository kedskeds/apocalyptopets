var mongoose = require("mongoose");
var Schema = mongoose.Schema;

var PetSchema = new Schema({
  pindex: Number,
  accessoryArray: Array
});

var Pet = mongoose.model("Pet", PetSchema);
module.exports = Pet;
