-- TEN 1.10.0.2 API
-- This file is auto-generated and for IntelliSense purposes only!
-- Any changes made here will not be reflected in the engine.

---@meta

---Effects module for Tomb Engine
---@class Effects
Effects = {}

---Constants for blend mode IDs.
---All blending modes except `OPAQUE`, `ADDITIVE` and `ALPHA_BLEND` will use depth sorting for applicable polygons.
---This may reduce engine performance, so it is preferable to minimize usage of other blending modes.
---@enum BlendID
BlendID = {
	---No transparency.
	OPAQUE = "OPAQUE",
	---So called "magenta transparency", every pixel can be either fully transparent or opaque.
	ALPHA_TEST = "ALPHA_TEST",
	---Standard additive blending.
	ADDITIVE = "ADDITIVE",
	---No depth test blending.
	NO_DEPTH_TEST = "NO_DEPTH_TEST",
	---Subtractive blending, with brighter texture areas making everything darker behind them.
	SUBTRACTIVE = "SUBTRACTIVE",
	---Wireframe mode.
	WIREFRAME = "WIREFRAME",
	---Produces "inversion" effect.
	EXCLUDE = "EXCLUDE",
	---Similar to `ADDITIVE`, but without excessive overbright.
	SCREEN = "SCREEN",
	---Similar to `SCREEN`, but with a little different blending formula.
	LIGHTEN = "LIGHTEN",
	---True alpha blending.
	ALPHA_BLEND = "ALPHA_BLEND",
}

---Module-prefixed alias for BlendID
Effects.BlendID = BlendID

---Constants for effect IDs.
---To be used with Objects.Moveable.SetEffect and Objects.Moveable.GetEffect functions.
---@enum EffectID
EffectID = {
	---No effect.
	NONE = "NONE",
	---Fire effect.
	FIRE = "FIRE",
	---Sparks effect.
	SPARKS = "SPARKS",
	---Smoke effect.
	SMOKE = "SMOKE",
	---Electric ignite effect.
	ELECTRIC_IGNITE = "ELECTRIC_IGNITE",
	---Red ignite effect.
	RED_IGNITE = "RED_IGNITE",
	---Custom effect.
	CUSTOM = "CUSTOM",
}

---Module-prefixed alias for EffectID
Effects.EffectID = EffectID

---Constants for feather modes.
---To be used with Effects.EmitStreamer function.
---@enum StreamerFeatherMode
StreamerFeatherMode = {
	---No feather effect.
	NONE = "NONE",
	---Center feather effect.
	CENTER = "CENTER",
	---Left feather effect.
	LEFT = "LEFT",
	---Right feather effect.
	RIGHT = "RIGHT",
}

---Module-prefixed alias for StreamerFeatherMode
Effects.StreamerFeatherMode = StreamerFeatherMode

---Constants for particle animation type constants.
---To be used with Effects.EmitAdvancedParticle function.
---@enum ParticleAnimationType
ParticleAnimationType = {
	---Frames loop sequentially.
	LOOP = "LOOP",
	---Frames play once and freeze on the last frame.
	ONE_SHOT = "ONE_SHOT",
	---Frames bounce back and forth.
	BACK_AND_FORTH = "BACK_AND_FORTH",
	---Frames are distributed over the particle's lifetime.
	LIFE_TIME_SPREAD = "LIFE_TIME_SPREAD",
}

---Module-prefixed alias for ParticleAnimationType
Effects.ParticleAnimationType = ParticleAnimationType

---Emit a lightning arc.
---@param origin Vec3 # Lightning origin (start) position.
---@param target Vec3 # Lightning target (end) position.
---@param color Color? # Color. (default: `Color(255, 255, 255)`)
---@param life number? # Lifetime in seconds. Clamped to [0, 4.233] for now because of strange internal maths. (default: `1`)
---@param amplitude integer? # Strength of the lightning - the higher the value, the "taller" the arcs. Clamped to [1, 255]. (default: `20`)
---@param beamWidth integer? # Beam width. Clamped to [1, 127]. (default: `2`)
---@param detail integer? # Higher numbers equal more segments, but it's not a 1:1 correlation. Clamped to [1, 127]. (default: `10`)
---@param smooth boolean? # If true, the arc will have large, smooth curves; if false, it will have small, jagged spikes. (default: `false`)
---@param endDrift boolean? # If true, the end of the arc will be able to gradually drift away from its destination in a random direction. (default: `false`)
function Effects.EmitLightningArc(origin, target, color, life, amplitude, beamWidth, detail, smooth, endDrift) end

---Emit a particle.
---@param pos Vec3 # World position.
---@param vel Vec3 # Directional velocity.
---@param spriteID integer # Sprite ID in the sprite sequence slot.
---@param gravity number? # Effect of gravity. Positive value ascends, negative value descends. (default: `0`)
---@param rotVel number? # Rotational velocity in degrees. (default: `0`)
---@param startColor Color? # Color at start of life. (default: `Color(255, 255, 255)`)
---@param endColor Color? # Color at end of life. This will finish long before the end of the particle's life due to internal math. (default: `Color(255, 255, 255)`)
---@param blendMode BlendID? # Render blend mode. (default: `TEN.Effects.BlendID.ALPHA_BLEND`)
---@param startSize number? # Size at start of life. (default: `10`)
---@param endSize number? # Size at end of life. (default: `0`)
---@param life number? # Lifespan in seconds. (default: `2`)
---@param damage boolean? # Harm the player on collision. (default: `false`)
---@param poison boolean? # Poison the player on collision. (default: `false`)
---@param spriteSeqID ObjID? # Sprite sequence slot ID. (default: `Objects.ObjID.DEFAULT_SPRITES`)
---@param startRot number? # Rotation at start of life. (default: `random`)
function Effects.EmitParticle(pos, vel, spriteID, gravity, rotVel, startColor, endColor, blendMode, startSize, endSize, life, damage, poison, spriteSeqID, startRot) end

---Emit a particle with extensive configuration options.
---Options include sprite sequence animation, lights, sounds, and damage effects.
---@param particleData ParticleData # Table containing particle data.
function Effects.EmitAdvancedParticle(particleData) end

---Emit a shockwave, similar to that seen when a harpy projectile hits something.
---@param pos Vec3 # World position.
---@param innerRadius integer? # Initial inner radius of the shockwave circle - 128 will be approx a click, 512 approx a block. (default: `0`)
---@param outerRadius integer? # Initial outer radius of the shockwave circle. (default: `128`)
---@param color Color? # Color. (default: `Color(255, 255, 255)`)
---@param lifetime number? # Lifetime in seconds (max 8.5 because of inner maths weirdness). (default: `1.0`)
---@param speed integer? # Initial speed of the shockwave's expansion (the shockwave will always slow as it goes). (default: `50`)
---@param angle integer? # Angle about the X axis - a value of 90 will cause the shockwave to be entirely vertical. (default: `0`)
---@param hurtsLara boolean? # If true, the shockwave will hurt Lara, with the damage being relative to the shockwave's current speed. (default: `false`)
function Effects.EmitShockwave(pos, innerRadius, outerRadius, color, lifetime, speed, angle, hurtsLara) end

---Emit dynamic light that lasts for a single frame.
---If you want a light that sticks around, you must call this each frame.
---@param pos Vec3 # World position of the light.
---@param color Color? # Light color. (default: `Color(255, 255, 255)`)
---@param radius integer? # Measured in "clicks" or 256 world units. (default: `20`)
---@param shadows boolean? # Determines whether light should generate dynamic shadows for applicable moveables. (default: `false`)
---@param name string? # If provided, engine will interpolate this light for high framerate mode (be careful not to use same name for different lights). (optional)
function Effects.EmitLight(pos, color, radius, shadows, name) end

---Emit dynamic directional spotlight that lasts for a single frame.
---If you want a light that sticks around, you must call this each frame.
---@param pos Vec3 # World position of the light.
---@param dir Vec3 # Normal which indicates light direction.
---@param color Color? # Light color. (default: `Color(255, 255, 255)`)
---@param radius integer? # Overall radius at the endpoint of a light cone, measured in "clicks" or 256 world units. (default: `10`)
---@param falloff integer? # Radius, at which light starts to fade out, measured in "clicks". (default: `5`)
---@param distance integer? # Distance, at which light cone fades out, measured in "clicks". (default: `20`)
---@param shadows boolean? # Determines whether light should generate dynamic shadows for applicable moveables. (default: `false`)
---@param name string? # If provided, engine will interpolate this light for high framerate mode (be careful not to use same name for different lights). (optional)
function Effects.EmitSpotLight(pos, dir, color, radius, falloff, distance, shadows, name) end

---Emit dynamic fog bulb that lasts for a single frame.
---If you want a fog bulb that sticks around, you must call this each frame.
---@param pos Vec3 # Position of the fog bulb.
---@param radius integer? # Radius measured in "clicks" or 256 world units. (default: `20`)
---@param density integer? # Density, ranging from 0 to 255. (default: `255`)
---@param color Color? # Color. (default: `Color(255, 255, 255)`)
---@param name string? # If provided, engine will interpolate this fog bulb for high framerate mode (be careful not to use same name for different fogbulbs) (optional)
function Effects.EmitFogBulb(pos, radius, density, color, name) end

---Emit blood.
---@param pos Vec3 # World position.
---@param count integer? # Blood sprite count. (default: `1`)
function Effects.EmitBlood(pos, count) end

---Emit an air bubble in a water room.
---@param pos Vec3 # World position where the effect will be spawned. Must be in a water room.
---@param size number? # Sprite size. (default: `32`)
---@param amp number? # Oscillation amplitude. (default: `32`)
function Effects.EmitAirBubble(pos, size, amp) end

---Emit waterfall mist.
---@param pos Vec3 # World position where the effect will be spawned.
---@param size number? # Effect size. (default: `64`)
---@param width number? # Width of the effect. (default: `32`)
---@param rot number? # Rotation of effect in degrees. (default: `0`)
---@param color Color? # Color of the effect. (default: `Color(255, 255, 255, 255)`)
function Effects.EmitWaterfallMist(pos, size, width, rot, color) end

---Emit fire for a single frame.
---Will not hurt player.
---Call this each frame if you want a continuous fire.
---@param pos Vec3 # World position.
---@param size number? # Fire size. (default: `1`)
function Effects.EmitFire(pos, size) end

---Emit an extending streamer effect.
---@param mov Moveable # Moveable object with which to associate the effect.
---@param tag integer # Numeric tag with which to associate the effect on the moveable.
---@param pos Vec3 # World position.
---@param dir Vec3 # Direction vector of movement velocity.
---@param rot number? # Start rotation in degrees. (default: `0`)
---@param startColor Color? # Color at the start of life. (default: `Color(255, 255, 255)`)
---@param endColor Color? # Color at the end of life. (default: `Color(0, 0, 0)`)
---@param width number? # Width in world units. (default: `0`)
---@param life number? # Lifetime in seconds. (default: `1`)
---@param vel number? # Movement velocity in world units per second. (default: `0`)
---@param expRate number? # Width expansion rate in world units per second. (default: `0`)
---@param rotRate number? # Rotation rate in degrees per second. (default: `0`)
---@param edgeFeatherMode StreamerFeatherMode? # Edge feather mode. (default: `Effects.StreamerFeatherMode.NONE`)
---@param lengthFeatherMode StreamerFeatherMode? # Length feather mode. _Not yet implemented._ (default: `Effects.StreamerFeatherMode.LEFT`)
---@param blendID BlendID? # Renderer blend ID. (default: `Effects.BlendID.ALPHA_BLEND`)
function Effects.EmitStreamer(mov, tag, pos, dir, rot, startColor, endColor, width, life, vel, expRate, rotRate, edgeFeatherMode, lengthFeatherMode, blendID) end

---Emit a particle flowing effect.
---@param pos Vec3 # World position.
---@param dir Vec3 # Directional velocity of the particles in world units per second.
---@param radius number? # Radius of emitter. The particles will be emitted inside the circle of provided radius measured from centre of world position. (default: `512`)
---@param life number? # Lifespan in seconds. (default: `1`)
---@param friction number? # Friction affecting velocity over time in world units per second. (default: `0`)
---@param maxSize number? # Max size of the particle. (default: `25`)
---@param startColor Color? # Color at start of life. (default: `Color(128, 128, 128)`)
---@param endColor Color? # Color at end of life. (default: `Color(0, 0, 0)`)
---@param spriteSeqID ObjID? # Sprite sequence slot ID. (default: `Objects.ObjID.DEFAULT_SPRITES`)
---@param spriteID integer? # Sprite ID in the sprite sequence slot. (default: `14 (UNDERWATER_DUST)`)
function Effects.EmitFlow(pos, dir, radius, life, friction, maxSize, startColor, endColor, spriteSeqID, spriteID) end

---Make an explosion.
---Does not hurt Lara.
---@param pos Vec3 # World position.
---@param size number? # Size of the shockwave if enabled. (default: `512`)
---@param shockwave boolean? # If true, creates a very faint shockwave which will not hurt Lara. For underwater rooms, it creates a splash if `pos` is near the surface. Shockwave uses `mainColor` if provided. (default: `false`)
---@param mainColor Color? # Main color of the explosion and the shockwave. If not provided, default explosion color will be used. Must be provided for colored explosions. (optional)
---@param additionalColor Color? # Additional color of the explosion. If provided, explosion would randomly use the main or the additional color. If not provided, only main color will be used. (optional)
function Effects.MakeExplosion(pos, size, shockwave, mainColor, additionalColor) end

---Make an earthquake.
---@param strength integer? # How strong should the earthquake be? Increasing this value also increases the lifespan of the earthquake. (default: `100`)
function Effects.MakeEarthquake(strength) end

---Get the wind vector for the current game frame.
---This represents the 3D displacement applied by the engine on things like particles affected by wind.().
---@return Vec3 # Wind vector.
function Effects.GetWind() end

return Effects
