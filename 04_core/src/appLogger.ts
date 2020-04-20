import winston from 'winston';

import { config, MODES } from './appConfig';

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.combine(
    winston.format.colorize(),
    winston.format.timestamp(),
  ),
  transports: [
    //
    // - Write to all logs with level `info` and below to `all.log`
    // - Write all logs error (and below) to `error.log`.
    //
    new winston.transports.File({ filename: 'logs/error.log', level: 'error' }),
    new winston.transports.File({ filename: 'logs/all.log' }),
  ],
});

//
// If we're not in production then log to the `console` with the format:
// `${info.level}: ${info.message} JSON.stringify({ ...rest }) `
//
if (config.mode !== MODES.PROD) {
  logger.add(new winston.transports.Console({
    format: winston.format.simple(),
  }));
}

export default logger;
