class PicsController < ApplicationController
    def index
        @pics=Pic.all.order("created_at DESC")
    end
    def new
        @pic=current_user.pics.build
    end
    def create
        @pic=current_user.pics.build(pic_params)
        if @pic.save
            flash[:notice]="Pic Created Successfully"
            redirect_to pics_path
        else
            flash[:error]="Error Occured"
            render :new, status: :unprocessable_entity
        end
    end
    def show
        @pic=Pic.find(params[:id])

        rescue ActiveRecord::RecordNotFound
            flash[:error]="With given Id no Record Found"
            redirect_to pics_path
        end 
     def edit
        @pic = Pic.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:error]="With given Id no Record Found"
            redirect_to pics_path
        end
    def update
        @pic=Pic.find(params[:id])
        if @pic.update(pic_params)
            flash[:notice]="Pic Updated Successfully"
            redirect_to pic_path(@pic)
        else
            flash[:error]="Error Occured"
            render :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @pic=Pic.find(params[:id])
        @pic.delete
        rescue ActiveRecord::RecordNotFound
            flash[:error]="With given Id no Record Found"
            redirect_to pics_path
        end
    private
    def pic_params
        params.require(:pic).permit(:title,:disc)
    end
end
