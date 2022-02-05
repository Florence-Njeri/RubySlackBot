class Notifications
  attr_reader: random_puns
def welcome
    str = "It is #{Time.now}, take a glass of water to give you life NOW!"
    str << "Maji ni uhai"
  end

  def puns 
    @random_puns ={
      0 => "Where did Noah keep his bees? In the ark hives.",
1 => "An untalented gymast walks into a bar",
2 => "My grandma is on speed dial and now I call her instagram.",
3 => "When he proposed to her, she found it very engaging.",
4 => "If Apple made a car, would it have Windows?",
5 => "I used to be a baby but I grew out of it."
    }
    @random_puns(rand(6))
  end

  def sendNotifications
    SlackNotifier::CLIENT.ping "It is #{Time.now}, take a glass of water to give you life NOW!"
  end
end