const Joi = require('joi');

const validateCategory = (category) => {
  const schema = Joi.object({
    name: Joi.string().required(),
    description: Joi.string().required(),
  });

  return schema.validate(category);
};

module.exports = validateCategory;