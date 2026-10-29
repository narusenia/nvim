local exports = {}

function exports.load_conf(name)
	return require(string.format("plugins.config.%s", name))
end

return exports
