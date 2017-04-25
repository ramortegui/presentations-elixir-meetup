defmodule Calculator do
  def init(val) do
    spawn(fn -> loop(val) end) 
  end
  def loop(val) do
    receive do
      {:+,num} -> loop(val+num)
      {:-,num} -> loop(val-num)
      {:res, pid} -> send pid,{:ok, val} 
                    loop(val)
    end
  end
end
