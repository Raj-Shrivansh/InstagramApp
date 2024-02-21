class LikesController < ApplicationController
  def create
    @like=current_user.likes.new(likes_params)
    if @like.save 
      flash[:error]="You liked successfully"
      redirect_to pics_path
    end
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
    redirect_to pics_path
  end
  private
  def likes_params
    puts "#{params} debug"
    params.require(:like).permit(:pic_id)
  end
end
