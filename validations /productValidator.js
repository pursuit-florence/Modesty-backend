const Joi = require('joi');

const validateProduct = (product) => {
  const schema = Joi.object({
    name: Joi.string().required(),
    description: Joi.string().required(),
    price: Joi.number().required(),
    color: Joi.string(),
    size: Joi.string(),
    image_url: Joi.string().uri(),
    type: Joi.string().required(),
  });

  return schema.validate(product);
};

module.exports = validateProduct;