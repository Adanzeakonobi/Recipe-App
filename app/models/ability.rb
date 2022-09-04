class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, Recipe, public: true
    can :manage, Food, user: user
    can :manage, Recipe, user: user
    can :manage, RecipeFood, user:
  end
end
