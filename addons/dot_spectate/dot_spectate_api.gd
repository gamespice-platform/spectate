extends RefCounted

## GameSpice Spectate's API level. The rule for bumping it is on GameSpice Core's GSAddonApi.
##
## LEVEL rises by one for anything a game could call that did not exist before. OLDEST is
## raised to LEVEL when something a game could have called is removed or changes meaning.

# 1: everything before this file existed.
# 2: GSSpectatorManager.camera_world and camera_mask: chase and death cameras pulled out
#    of the level through GameSpice Core's GSCameraProbe (needs GameSpice Core API 5).
# 3: free roaming on by default (`allow_roaming`, `force_camera` default 0), GSSpectatorFreeCam,
#    GSSpectatorManager.can_roam / toggle_roam, the spectator cvars (bind_cvars, follow_cvars).
#    Behaviour change: `force_camera` defaults to 0 and a roam-plus-restriction rules set no
#    longer fails validate(); roaming_permitted() is simply false.
# 4: GSSpectatorHost, the shared wrapper over GSSpectatorManager a game configures with
#    exports (guard_roam, hooks) instead of overriding.
const LEVEL := 4
const OLDEST := 1
