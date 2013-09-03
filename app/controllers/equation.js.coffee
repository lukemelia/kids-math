EquationController = Em.ObjectController.extend
  answer: (->
    console.log("eqText: #{@get('equationText')}")
    eval @get('equationText')
  ).property('equationText')
  nums: []
  num1: (-> @get('nums').objectAt(0)).property('nums')
  num2: (-> @get('nums').objectAt(1)).property('nums')
  operation: '+'
  lowerBound: 0
  upperBound: 5
  equationText: (->
    text = "#{@nums[0]}#{@get('operation')}#{@nums[1]}"
    console.log("eqT: #{text}")
    text
  ).property("nums", "operation")
  genInt: ->
    expanse = @upperBound - @lowerBound
    Math.floor(Math.random() * expanse) + @lowerBound
  generateEquation: ->
    @nums = [@genInt(), @genInt() ]
  action:
    verifyAnswer: ->
      console.log "verifyAnswer"


`export default EquationController`