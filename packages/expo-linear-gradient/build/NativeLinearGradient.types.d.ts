import { PropsWithChildren } from 'react';
import { ViewProps } from 'react-native';
export declare type NativeLinearGradientProps = ViewProps & PropsWithChildren<{
    colors: number[];
    locations?: number[] | null;
    startPoint?: NativeLinearGradientPoint | null;
    endPoint?: NativeLinearGradientPoint | null;
}>;
export declare type getLinearGradientBackgroundImage = (colors: number[], width?: number, height?: number, locations?: number[] | null, startPoint?: NativeLinearGradientPoint | null, endPoint?: NativeLinearGradientPoint | null) => string;
export declare type NativeLinearGradientPoint = [number, number];
//# sourceMappingURL=NativeLinearGradient.types.d.ts.map