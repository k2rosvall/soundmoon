# frozen_string_literal: true

class ProfilesController < ApplicationController
  before_action :set_profile
  def show; end

  private

  def set_profile
    @profile = current_user.profile
  end
end
