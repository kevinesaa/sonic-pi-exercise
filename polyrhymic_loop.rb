# Welcome to Sonic Pi
tick = 1
half = 0.5
quart = 0.25

next_lap = 5
count = 1
live_loop :drums do
  sample :drum_heavy_kick
  play_other = count % next_lap
  if (play_other == 0)
    sample :drum_splash_soft
    next_lap = next_lap + 1
    count = 1
    if (next_lap > 8)
      next_lap = 5
    end
  end
  count = count + 1
  sleep half
end

live_loop :drums2 do
  
  sample :drum_snare_soft
  sleep tick
end
