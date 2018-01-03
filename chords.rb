# Welcome to Sonic Pi v2.11.1
define :noteplay do |notedata,time,synthname,synthtwo|
  use_synth synthname
  play notedata
  use_synth synthtwo
  play notedata
  sleep time
end
define :chordplay do |notedata,type,time,synthname,stwo,fx|
  with_fx fx do
    
    noteplay chord(notedata,type), time, synthname, stwo
  end
end
