counter = function(start) {
  this.count = start;
  this.increment = function() { this.count++; return this.count; }
  this.value = function() { return this.count }
}

