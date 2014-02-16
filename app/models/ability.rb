class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :user
      #can :task, Project # can run task
      #can [:create, :read], Task
      can :read, :all
    else
      can :read, HomeController
      can :read, SessionsController
      can :update, User
    end

    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
