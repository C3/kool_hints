module KoolHints
  class KoolHintsController < ApplicationController
    before_filter :load_kool_hint

    def edit
    end

    def update
      if @koolhint.update_attributes(params[:hint])
        flash[:notice] = "Hint updated"
        redirect_to return_to_path
      else
        render :edit
      end
    end

    private

    def load_kool_hint
      @koolhint = KoolHint.find(params[:id])
    end
  end
end
