class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to messages_path, notice: "チャットグループが作成されました。"
    else
      redirect_to new_group_path, alert: "チャットグループを作成できませんでした。"
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end
end
