-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Sound module for Tomb Engine
---@class Sound
Sound = {}

---Constants for the type of the audio tracks.
---To be used with sound track functions, such as Sound.PlayAudioTrack and Sound.StopAudioTrack.
---@enum SoundTrackType
SoundTrackType = {
	---Used for one-time music tracks.
	ONESHOT = "ONESHOT",
	---Used for looped ambience or music.
	LOOPED = "LOOPED",
	---Used for dialogs.
	VOICE = "VOICE",
}

---Module-prefixed alias for SoundTrackType
Sound.SoundTrackType = SoundTrackType

---Play an audio track.
---Should be placed in the `Audio` folder.
---Supported formats are wav, mp3 and ogg.
---@param filename string # Filename of a track (without file extension) to play.
---@param type SoundTrackType # Type of the audio track to play.
function Sound.PlayAudioTrack(filename, type) end

---Set and play an ambient track.
---@param name string # Name of track (without file extension) to play.
---@param fromStart boolean # Specifies whether ambient track should play from the start, or crossfade at a random position.
function Sound.SetAmbientTrack(name, fromStart) end

---Stop any audio tracks currently playing.
function Sound.StopAudioTracks() end

---Stop audio track that is currently playing.
---@param type SoundTrackType # Type of the audio track.
function Sound.StopAudioTrack(type) end

---Get current loudness level for specified track type.
---@param type SoundTrackType # Type of the audio track.
---@return number # Current loudness of a specified audio track.
function Sound.GetAudioTrackLoudness(type) end

---Play sound effect.
---@param soundID integer # Sound ID to play. Corresponds to the value in the sound XML file or Tomb Editor's "Sound Infos" window.
---@param position Vec3? # The 3D position of the sound, i.e. where the sound "comes from". If not given, the sound will not be positional. (optional)
function Sound.PlaySound(soundID, position) end

---Stop sound effect.
---@param soundID integer # Sound ID to play. Corresponds to the value in the sound XML file or Tomb Editor's "Sound Infos" window.
function Sound.StopSound(soundID) end

---Check if the sound effect is playing.
---@param soundID integer # Sound ID to check. Corresponds to the value in the sound XML file or Tomb Editor's "Sound Infos" window.
function Sound.IsSoundPlaying(soundID) end

---Check if the audio track is playing.
---@param track string # Filename to check. Should be without extension and without full directory path.
function Sound.IsAudioTrackPlaying(track) end

---Get current subtitle string for a voice track currently playing.
---Subtitle file must be in .srt format, have same filename as voice track, and be placed in same directory as voice track.
---Returns nil if no voice track is playing or no subtitle present.
---@return string # Current subtitle string.
function Sound.GetCurrentSubtitle() end

return Sound
