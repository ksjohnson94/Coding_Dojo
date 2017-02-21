SLL ...
this.reverse = function() {
  var done = null
  var working = this.head
  var yetToDo = this.head.next

  while (working.next) {
    working.next = done;
    done = working;
    working = ytd;
    ytd = ytd.next;

  }
  working.next = done;
  this.head = working;
  
}
