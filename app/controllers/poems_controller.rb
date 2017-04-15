class PoemsController < ApplicationController
    before_action :set_poem, only: [:show]
  def index
    @poems = Poem.all
  end

  def show
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def poem_params
      params.require(:poem).permit(:content, :title)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_poem
      @poem = Poem.find(params[:id])
    end
end
