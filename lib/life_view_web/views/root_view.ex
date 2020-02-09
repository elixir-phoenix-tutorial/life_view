defmodule LifeViewWeb.RootView do
  use LifeViewWeb, :view

  def class_for(1), do: "alive"
  def class_for(_), do: "dead"
end
