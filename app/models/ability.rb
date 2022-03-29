# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can [:create, :update, :read], Album

    return unless user.admin?

    can :manage, Albums
  end
end
