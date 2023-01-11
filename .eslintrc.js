module.exports = {
	'extends': 'airbnb-base',
	'installedESLint': true,
	'plugins': [
		'import'
	],
	'globals': {
	  'window': true,
	  'test': true,
	  'expect': true,
	  'describe': true,
	},
	'rules': {
		'indent': ['error', 'tab'],
		'brace-style': ['error', 'stroustrup'],
		'no-tabs': ['off'],
		'arrow-body-style': ['error', 'always']
	}
};
