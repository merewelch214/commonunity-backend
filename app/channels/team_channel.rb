class TeamChannel < ApplicationCable::Channel
  def subscribed
    stream_from "team_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
