class ApplicationController < ActionController::Base
    before_action :authenticate_model!, only: [ :create, :update, :destroy, :new, :edit]
end
