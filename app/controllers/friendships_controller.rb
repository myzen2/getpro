class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Vous venez d'ajouter un ami."
      redirect_to dashboard_path

    else
      flash[:alert] = "Une erreur s'est produite, veuillez réessayer."
      redirect_to dashboard_path
    end
  end

  def my_friend
    @friendship = current_user.friendships
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:alert] = "Cette personne n'est plus dans votre liste d'amis"
    redirect_to dashboard_path
  end
end
