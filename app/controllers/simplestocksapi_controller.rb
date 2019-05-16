class PrivacyController < ApplicationController
  before_action :set_example, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @earnings = {
      :mostAnticipatedEarnings => {
        moday: ['etsy', 'mdr', 'kos', 'rrc', 'ten', 'htz', 'shak', 'awi', 'twou'],
        tuesday: ['m', 'panw', 'vcel', 'axon'],
        wednesday: ['test'],
        thursday: ['test'],
        friday: ['test'],
        },
      }
    }
  end

  def show
  end

end
