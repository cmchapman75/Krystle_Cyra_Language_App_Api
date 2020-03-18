module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'development',
  DATABASE_URL: process.env.DATABASE_URL || 'postgres://yukreaapfehnjk:001d8d536b6c23f74ea501340a2cf82c13fed3b82b763c3b6d1626b3d2a67ad0@ec2-35-172-85-250.compute-1.amazonaws.com',
  TEST_DATABASE_URL: process.env.TEST_DATABASE_URL || 'postgresql://postgres@localhost/spaced-repetition-test',
  JWT_SECRET: process.env.JWT_SECRET || 'change-this-secret',
  JWT_EXPIRY: process.env.JWT_EXPIRY || '3h',
};
