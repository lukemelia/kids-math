ApplicationController = Em.Controller.extend
  needs: ['config']
  kidsNames: Em.computed.alias("controllers.config.kidsNames")
  greeting: (->
    greetingArray = for name in @get('kidsNames')
                      "Hello #{name}!"
    greetingArray.join(" ")
  ).property("learnerNames")

`export default ApplicationController`