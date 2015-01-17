if (Meteor.isClient){
  Template.main.helpers({
    helloString: "Hello MyTube!!"
  });
}

console.log("Hello!");