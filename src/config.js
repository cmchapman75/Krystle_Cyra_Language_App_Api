module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'development',
  DATABASE_URL: process.env.DATABASE_URL || 'postgres://ciaefvsrtabrwc:cd67dc19ea783254e1b3e87d5e521d80637513f2bec16aa338b1c80864de6a7c@ec2-54-197-48-79.compute-1.amazonaws.com',
  TEST_DATABASE_URL: process.env.TEST_DATABASE_URL || 'postgresql://postgres@localhost/spaced-repetition-test',
  JWT_SECRET: process.env.JWT_SECRET || 'change-this-secret',
  JWT_EXPIRY: process.env.JWT_EXPIRY || '3h',
};
