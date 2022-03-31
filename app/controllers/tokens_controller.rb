class TokensController < ApplicationController
  def index
    @tokens = Token.all
  end
end
