// Copyright 2015-present 650 Industries. All rights reserved.

#import <ABI45_0_0EXSensors/ABI45_0_0EXMagnetometer.h>
#import <ABI45_0_0ExpoModulesCore/ABI45_0_0EXMagnetometerInterface.h>

@implementation ABI45_0_0EXMagnetometer

ABI45_0_0EX_EXPORT_MODULE(ExponentMagnetometer);

- (const NSString *)updateEventName
{
  return @"magnetometerDidUpdate";
}

- (id)getSensorServiceFromModuleRegistry:(ABI45_0_0EXModuleRegistry *)moduleRegistry
{
  return [moduleRegistry getModuleImplementingProtocol:@protocol(ABI45_0_0EXMagnetometerInterface)];
}

- (void)setUpdateInterval:(double)updateInterval onSensorService:(id)sensorService
{
  [sensorService setMagnetometerUpdateInterval:updateInterval];
}

- (BOOL)isAvailable:(id)sensorService
{
  return [sensorService isMagnetometerAvailable];
}

- (void)subscribeToSensorService:(id)sensorService withHandler:(void (^)(NSDictionary *event))handlerBlock
{
  [sensorService sensorModuleDidSubscribeForMagnetometerUpdates:self withHandler:handlerBlock];
}

- (void)unsubscribeFromSensorService:(id)sensorService
{
  [sensorService sensorModuleDidUnsubscribeForMagnetometerUpdates:self];
}

@end
